.class Lmiui/vip/VipWebClient$4;
.super Ljava/lang/Object;
.source "VipWebClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/vip/VipWebClient;->loadJs(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/vip/VipWebClient;

.field final synthetic val$js:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmiui/vip/VipWebClient;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lmiui/vip/VipWebClient$4;->this$0:Lmiui/vip/VipWebClient;

    iput-object p2, p0, Lmiui/vip/VipWebClient$4;->val$js:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lmiui/vip/VipWebClient$4;->this$0:Lmiui/vip/VipWebClient;

    iget-object v1, p0, Lmiui/vip/VipWebClient$4;->val$js:Ljava/lang/String;

    # invokes: Lmiui/vip/VipWebClient;->doLoadJs(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lmiui/vip/VipWebClient;->access$600(Lmiui/vip/VipWebClient;Ljava/lang/String;)V

    return-void
.end method
