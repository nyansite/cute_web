<style>
    .navbar{
        display: flex;
        position: fixed;
        width: 100vw;
        height:80px ;
        background-color: #2a4a77;
        border-radius: 15px;
        z-index: 9999;
    }
    .logo{
        position: absolute;
        left: 30px;
        top: 10px;
        height: 60px;
        width: 60px;
        border-radius: 50%;
        background-color: white;
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
        height: 50px;
        width: 50px;
    }
    .innerbar span{
        color: white;
        font-size: 8px;
    }
    .search {
        position: absolute;
        top: 20px;
        left: 440px;
        flex: auto;
    }
    .search .textcondition{
        position: absolute;
        border-radius: 10px;
        width: 24vw;
        height: 40px;
    }
    .search .searchbutton{
        position: absolute;
        left: 25vw;
        height: 40px;
        width: 5vw;
    }
    .profile{
        position: absolute;
        top: 10px;
        right: 5vw;
        width: 60px;
        height: 60px;
        border-radius: 50%; 
    }
</style>
<div class="navbar">
    <img src="/logo.svg" class="logo" alt="ico">
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
            <button class="searchbutton">搜索</button>
    </div>
    <img class="profile" src="/cat-space.gif" alt="avatar">
</div>
<slot />