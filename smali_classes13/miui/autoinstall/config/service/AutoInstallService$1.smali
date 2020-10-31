.class Lmiui/autoinstall/config/service/AutoInstallService$1;
.super Ljava/lang/Object;
.source "AutoInstallService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/autoinstall/config/service/AutoInstallService;->requestDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/autoinstall/config/service/AutoInstallService;


# direct methods
.method constructor <init>(Lmiui/autoinstall/config/service/AutoInstallService;)V
    .registers 2

    iput-object p1, p0, Lmiui/autoinstall/config/service/AutoInstallService$1;->this$0:Lmiui/autoinstall/config/service/AutoInstallService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lmiui/autoinstall/config/service/AutoInstallService$1;->this$0:Lmiui/autoinstall/config/service/AutoInstallService;

    # getter for: Lmiui/autoinstall/config/service/AutoInstallService;->mLocalAppInfos:Ljava/util/List;
    invoke-static {v0}, Lmiui/autoinstall/config/service/AutoInstallService;->access$000(Lmiui/autoinstall/config/service/AutoInstallService;)Ljava/util/List;

    move-result-object v1

    # invokes: Lmiui/autoinstall/config/service/AutoInstallService;->requestAppInfo(Ljava/util/List;)Lmiui/autoinstall/config/entity/ResponseAppInfo;
    invoke-static {v0, v1}, Lmiui/autoinstall/config/service/AutoInstallService;->access$100(Lmiui/autoinstall/config/service/AutoInstallService;Ljava/util/List;)Lmiui/autoinstall/config/entity/ResponseAppInfo;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v1, p0, Lmiui/autoinstall/config/service/AutoInstallService$1;->this$0:Lmiui/autoinstall/config/service/AutoInstallService;

    # invokes: Lmiui/autoinstall/config/service/AutoInstallService;->downloadApp(Lmiui/autoinstall/config/entity/ResponseAppInfo;)V
    invoke-static {v1, v0}, Lmiui/autoinstall/config/service/AutoInstallService;->access$200(Lmiui/autoinstall/config/service/AutoInstallService;Lmiui/autoinstall/config/entity/ResponseAppInfo;)V

    goto :goto_17

    :cond_12
    iget-object v1, p0, Lmiui/autoinstall/config/service/AutoInstallService$1;->this$0:Lmiui/autoinstall/config/service/AutoInstallService;

    # invokes: Lmiui/autoinstall/config/service/AutoInstallService;->showRestoreError()V
    invoke-static {v1}, Lmiui/autoinstall/config/service/AutoInstallService;->access$300(Lmiui/autoinstall/config/service/AutoInstallService;)V

    :goto_17
    return-void
.end method
