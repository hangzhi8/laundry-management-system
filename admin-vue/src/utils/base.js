const base = {
    get() {
        return {
            url : "http://localhost:8080/xiyidian/",
            name: "xiyidian",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/xiyidian/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "洗衣店订单管理系统"
        } 
    }
}
export default base
