<style>
    .navbar{
        display: flex;
        position: fixed;
        width: 100vw;
        height:100px ;
        background-color: #2a4a77;
        border-radius: 15px;
        z-index: 9999;
    }
    .logo{
        position: absolute;
        left: 30px;
        top: 10px;
        height: 80px;
        width: 80px;
        border-radius: 50%;
    }
    .innerbar{
        position: absolute;
        left: 140px;
        display: flex;
        flex-direction: row;
        text-align: center;
    }
    .unit{
        flex: auto;
        display: flex;
        flex-direction: column;
    }
    .ico{
        height: 70px;
        width: 70px;
    }
    .innerbar span{
        color: white;
    }
    .search {
        position: absolute;
        left: 440px;
        flex: auto;
    }
    .search .textcondition{
        position: absolute;
        border-radius: 10px;
        top: 10px;
        width: 30vw;
        height: 40px;
    }
    .search .tagcondition{
        position: absolute;
        border-radius: 10px;
        top: 60px;
        width: 15vw;
        height: 25px;
    }
    .search .addtagbutton{
        position: absolute;
        top: 60px;
        left: 16vw;
        height: 30px;
        width: 6vw;
    }
    .search .searchbutton{
        position: absolute;
        top: 60px;
        left: 23vw;
        height: 30px;
        width: 7vw;
    }
    .profile{
        position: absolute;
        top: 15px;
        right: 5vw;
        width: 70px;
        height: 70px;
        border-radius: 50%; 
    }
</style>
<div class="navbar">
    <img src="/133122914.jpg" class="logo" alt="ico">
    <div class="innerbar">
        <div class="unit">
            <div class="ico">
                <img src="\ChatBubbleOvalLeftEllipsis.svg" alt="message">
                <span>我的消息</span>
            </div>
        </div>
        <div class="unit">
            <div class="ico">
                <img src="\Clock.svg" alt="message">
                <span>历史记录</span>
            </div>
        </div>
        <div class="unit">
            <div class="ico">
                <img src="\Star.svg" alt="message">
                <span>我的收藏</span>
            </div>
        </div>
        <div class="unit">
            <div class="ico">
                <img src="\Newspaper.svg" alt="message">
                <span>动态消息</span>
            </div>
        </div>
    </div>
    <div class="search">
            <input type="search" class="textcondition">
            <input class="tagcondition" placeholder=" 搜索标签">
            <button class="addtagbutton">添加标签</button>
            <button class="searchbutton">搜索</button>
    </div>
    <img class="profile" src="/cat-space.gif" alt="avatar">
</div>
<slot />