(global["webpackJsonp"]=global["webpackJsonp"]||[]).push([["pages/jijianxinxi/add-or-update"],{"0acc":function(i,n,e){},"159a":function(i,n,e){"use strict";(function(i){Object.defineProperty(n,"__esModule",{value:!0}),n.default=void 0;var t=r(e("a34a"));function r(i){return i&&i.__esModule?i:{default:i}}function a(i,n,e,t,r,a,u){try{var o=i[a](u),s=o.value}catch(c){return void e(c)}o.done?n(s):Promise.resolve(s).then(t,r)}function u(i){return function(){var n=this,e=arguments;return new Promise((function(t,r){var u=i.apply(n,e);function o(i){a(u,t,r,o,s,"next",i)}function s(i){a(u,t,r,o,s,"throw",i)}o(void 0)}))}}var o=function(){Promise.all([e.e("common/vendor"),e.e("components/w-picker/w-picker")]).then(function(){return resolve(e("b7aa"))}.bind(null,e)).catch(e.oe)},s={data:function(){return{cross:"",ro:{jijianxinxiUuidNumber:!0,yonghuId:!1,jijianxinxiName:!1,jijianxinxiPhone:!1,jijianxinxiPhoto:!1,jijianxinxiAddress:!1,jijianxinxiTypes:!1,jijianxinxiMoney:!1,tongchengjisongContent:!1,insertTime:!1,createTime:!1},ruleForm:{jijianxinxiUuidNumber:this.getUUID(),yonghuId:"",jijianxinxiName:"",jijianxinxiPhone:"",jijianxinxiPhoto:"",jijianxinxiAddress:"",jijianxinxiTypes:"",jijianxinxiValue:"",jijianxinxiMoney:"",tongchengjisongContent:"",insertTime:"",createTime:""},user:{},jijianxinxiTypesOptions:[],jijianxinxiTypesIndex:0}},components:{wPicker:o},computed:{baseUrl:function(){return this.$base.url}},onLoad:function(i){var n=this;return u(t.default.mark((function e(){var r,a,u;return t.default.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return r={page:1,limit:100,dicCode:"jijianxinxi_types"},e.next=3,n.$api.page("dictionary",r);case 3:if(a=e.sent,n.jijianxinxiTypesOptions=a.data.list,!i.id){e.next=11;break}return n.ruleForm.id=i.id,e.next=9,n.$api.info("jijianxinxi",n.ruleForm.id);case 9:u=e.sent,n.ruleForm=u.data;case 11:i.jijianxinxiId&&(n.ruleForm.jijianxinxiId=i.jijianxinxiId);case 12:case"end":return e.stop()}}),e)})))()},methods:{jijianxinxiTypesChange:function(i){this.jijianxinxiTypesIndex=i.target.value,this.ruleForm.jijianxinxiValue=this.jijianxinxiTypesOptions[this.jijianxinxiTypesIndex].indexName,this.ruleForm.jijianxinxiTypes=this.jijianxinxiTypesOptions[this.jijianxinxiTypesIndex].codeIndex},jijianxinxiPhotoTap:function(){var i=this;this.$api.upload((function(n){i.ruleForm.jijianxinxiPhoto=i.$base.url+"upload/"+n.file,i.$forceUpdate(),i.$nextTick((function(){}))}))},insertTimeConfirm:function(i){console.log(i),this.ruleForm.insertTime=i.result,this.$forceUpdate()},createTimeConfirm:function(i){console.log(i),this.ruleForm.createTime=i.result,this.$forceUpdate()},getUUID:function(){return(new Date).getTime()},onSubmitTap:function(){var n=this;return u(t.default.mark((function e(){return t.default.wrap((function(e){while(1)switch(e.prev=e.next){case 0:if(n.ruleForm.jijianxinxiUuidNumber){e.next=3;break}return n.$utils.msg("编号不能为空"),e.abrupt("return");case 3:if(n.ruleForm.jijianxinxiName){e.next=6;break}return n.$utils.msg("收件人名称不能为空"),e.abrupt("return");case 6:if(n.ruleForm.jijianxinxiPhone||n.$validate.isMobile(n.ruleForm.jijianxinxiPhone)){e.next=9;break}return n.$utils.msg("联系方式不能为空并且需要输入正确格式"),e.abrupt("return");case 9:if(n.ruleForm.jijianxinxiPhoto){e.next=12;break}return n.$utils.msg("物品图片不能为空"),e.abrupt("return");case 12:if(n.ruleForm.jijianxinxiAddress){e.next=15;break}return n.$utils.msg("送件住址不能为空"),e.abrupt("return");case 15:if(n.ruleForm.jijianxinxiMoney||n.$validate.isNumber(n.ruleForm.jijianxinxiMoney)||!(n.ruleForm.jijianxinxiMoney>0)){e.next=18;break}return n.$utils.msg("价格不能为空，不能小于0 格式为数字或小数"),e.abrupt("return");case 18:if(!n.ruleForm.id){e.next=23;break}return e.next=21,n.$api.update("jijianxinxi",n.ruleForm);case 21:e.next=25;break;case 23:return e.next=25,n.$api.save("jijianxinxi",n.ruleForm);case 25:i.setStorageSync("pingluenStateState",!0),n.$utils.msgBack("提交成功");case 27:case"end":return e.stop()}}),e)})))()},getDate:function(i){var n=new Date,e=n.getFullYear(),t=n.getMonth()+1,r=n.getDate();return"start"===i?e-=60:"end"===i&&(e+=2),t=t>9?t:"0"+t,r=r>9?r:"0"+r,"".concat(e,"-").concat(t,"-").concat(r)},toggleTab:function(i){this.$refs[i].show()}}};n.default=s}).call(this,e("543d")["default"])},"38d0":function(i,n,e){"use strict";var t=e("0acc"),r=e.n(t);r.a},5771:function(i,n,e){"use strict";e.d(n,"b",(function(){return r})),e.d(n,"c",(function(){return a})),e.d(n,"a",(function(){return t}));var t={wPicker:function(){return Promise.all([e.e("common/vendor"),e.e("components/w-picker/w-picker")]).then(e.bind(null,"b7aa"))}},r=function(){var i=this,n=i.$createElement;i._self._c},a=[]},9034:function(i,n,e){"use strict";e.r(n);var t=e("159a"),r=e.n(t);for(var a in t)"default"!==a&&function(i){e.d(n,i,(function(){return t[i]}))}(a);n["default"]=r.a},b890:function(i,n,e){"use strict";(function(i){e("48e8");t(e("66fd"));var n=t(e("be7c"));function t(i){return i&&i.__esModule?i:{default:i}}wx.__webpack_require_UNI_MP_PLUGIN__=e,i(n.default)}).call(this,e("543d")["createPage"])},be7c:function(i,n,e){"use strict";e.r(n);var t=e("5771"),r=e("9034");for(var a in r)"default"!==a&&function(i){e.d(n,i,(function(){return r[i]}))}(a);e("38d0");var u,o=e("f0c5"),s=Object(o["a"])(r["default"],t["b"],t["c"],!1,null,"560f545f",null,!1,t["a"],u);n["default"]=s.exports}},[["b890","common/runtime","common/vendor"]]]);