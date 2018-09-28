
/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

//require('./bootstrap');

window.Vue = require('vue');



/**
 * Next, we will create a fresh Vue application instance and attach it to
 * the page. Then, you may begin adding components to this application
 * or customize the JavaScript scaffolding to fit your unique needs.
 */
Vue.component('likeButton', {
    props: ['tweetId',"hasLiked","likeCount"],
    data(){
        return{
            dataHasLiked:0,
            dataLikeCount:0,
        }
    },
    template:`
        <button
            type="button"
            class="btn btn-success"
            @click="likePost">
                Like ({{ dataLikeCount}})
        </button>
    `,
    mounted() {
        this.dataHasLiked=this.hasLiked;
        this.dataLikeCount=this.likeCount;
    },
    methods:{
        likePost(){
            var type = 'like';
            if(this.dataHasLiked){
                type= 'unlike';
            }
            axios({
                method:'POST',
                url:'/tweets/'+this.tweetId+'/'+type,
            }).then((response)=>{
                console.log(response);
                if(response.data.status=="success"){
                    if(type=='like'){
                        this.dataLikeCount++;
                        this.dataHasLiked="true";
                    }else{
                        this.dataLikeCount--;
                        this.dataHasLiked="false";
                    }
                    return;
                }
            });
        }
    }
});

Vue.component('commentForm', {
    data(){
        return{
            browseGifs: false
        }
    },
    template: `
        <div>
            <textarea v-show="!browseGifs" name="message" ref="message"></i></textarea>
            <button class="btn btn-info" type="button" @click="toggleBrowseGifs">
                <i v-show="!browseGifs" name="message" class="fa fa-image"></i>
                <i v-show="browseGifs" name="message" class="fa fa-times"></i>
            </button>
            <input type="hidden" name="gif_comment" ref="gif_comment" value="0"/>
            <button v-show="!browseGifs" type="submit" class="btn btn-primary">Add Comment</button>

            <search-bar v-if="browseGifs" @gifSelected="setGifComment"></search-bar>
        </div>
    `,
    methods: {
        setGifComment(chosenGif){
            console.log('###');
            console.log(chosenGif);
            console.log('###');
            // set gif_comment to 1/true
            this.$refs['gif_comment'].value = 1;
            this.$refs['message'].value = chosenGif;
            console.log();

            // set the message textarea to contain the URL/path to the chosen GIF

        },
        toggleBrowseGifs(){
            this.browseGifs = !this.browseGifs;
        }
    }
});


var searchBar = Vue.component('searchBar',{
    data(){
        return {
            criteria: null,
            apiKey: 'qMuSmKXlkMcjUZgXAqfccT2dAMK84cdD',
            limit:15,
            gifs: [],
            dropdownOpen: false,
            selectedGif: ''
        }
    },
    template: `
    <div class="search-bar">
        <div class="input-group">
            <input type="text"
                @keypress.enter.prevent="doSearch"
                @focus="doFocus"
                v-model="criteria"
                class="form-control"
                placeholder="Search for GIFS" />

                <div class="input-group-append">
                    <button @click.prevent="doSearch" class="btn btn-primary">Search</button>
                </div>
            </div>
            <div class="dropdown" :class="{'show': dropdownOpen}">
                <div class="dropdown-menu">
                <a
                    href="#"
                    v-for="gif in gifs"
                    class="dropdown=-item"
                    @click="selectGif(gif.images)">

                    <img :src="gif.images.fixed_width.url" />
                    </a>
                </div>
            </div>
            <div v-show="selectedGif" class="card selectedGifPreview">

            <div class="card-body">
                <img :src="selectedGif" />
                <br />
                <a href="#" class="btn btn-sm btn-danger" @click="unselectGif">x</a>
                <button type="submit" class="btn btn-small btn-success">Go</button>
        </div>
    </div>
</div>

`,
 methods: {
     doSearch() {
         console.log('doSearch');
         if(!this.criteria){
             return false;
        }
        this.gifs = [];
        this.dropdown = false;
        axios.get('https://api.giphy.com/v1/gifs/search?q=' + this.criteria + '&api_key=' + this.apiKey + '&limit=' + this.limit)
        .then((response) => {
            console.log(response);
            this.loadGifs(response.data.data);
        });
    },

loadGifs(data) {
     this.gifs = data;
     this.dropdownOpen = true;
 },

 selectGif(gif) {
     console.log(gif);
     this.selectedGif = gif.fixed_height.url;
     this.dropdownOpen = false;
     this.$emit('gifSelected', this.selectedGif);
 },
 unselectGif() {
     this.selectedGif = '';
 },
doFocus(){
    if(this.criteria) this.dropdownOpen = true;
        }

    }
});

var vue = new Vue({
    el: '#app'
});
