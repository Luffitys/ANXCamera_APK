.class Lmiui/autoinstall/config/service/AutoInstallService$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lmiui/autoinstall/config/service/AutoInstallService;


# direct methods
.method constructor <init>(Lmiui/autoinstall/config/service/AutoInstallService;)V
    .locals 0

    iput-object p1, p0, Lmiui/autoinstall/config/service/AutoInstallService$1;->this$0:Lmiui/autoinstall/config/service/AutoInstallService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService$1;->this$0:Lmiui/autoinstall/config/service/AutoInstallService;

    invoke-static {v0}, Lmiui/autoinstall/config/service/AutoInstallService;->access$000(Lmiui/autoinstall/config/service/AutoInstallService;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/autoinstall/config/service/AutoInstallService;->access$100(Lmiui/autoinstall/config/service/AutoInstallService;Ljava/util/List;)Lmiui/autoinstall/config/entity/ResponseAppInfo;

    move-result-object v0

    iget-object p0, p0, Lmiui/autoinstall/config/service/AutoInstallService$1;->this$0:Lmiui/autoinstall/config/service/AutoInstallService;

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Lmiui/autoinstall/config/service/AutoInstallService;->access$200(Lmiui/autoinstall/config/service/AutoInstallService;Lmiui/autoinstall/config/entity/ResponseAppInfo;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lmiui/autoinstall/config/service/AutoInstallService;->access$300(Lmiui/autoinstall/config/service/AutoInstallService;)V

    :goto_0
    return-void
.end method
