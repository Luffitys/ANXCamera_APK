.class Lmiui/slide/SlideCloudConfigHelper$1;
.super Landroid/database/ContentObserver;
.source "SlideCloudConfigHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/slide/SlideCloudConfigHelper;->registerDataObserver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/slide/SlideCloudConfigHelper;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lmiui/slide/SlideCloudConfigHelper;Landroid/os/Handler;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lmiui/slide/SlideCloudConfigHelper$1;->this$0:Lmiui/slide/SlideCloudConfigHelper;

    iput-object p3, p0, Lmiui/slide/SlideCloudConfigHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4

    const-string v0, "SlideCloudConfigHelper"

    const-string v1, "SlideCloudConfigInfo onChange"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/slide/SlideCloudConfigHelper$1;->this$0:Lmiui/slide/SlideCloudConfigHelper;

    iget-object v1, p0, Lmiui/slide/SlideCloudConfigHelper$1;->val$context:Landroid/content/Context;

    # invokes: Lmiui/slide/SlideCloudConfigHelper;->updateAppSlideCloudConfigList(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lmiui/slide/SlideCloudConfigHelper;->access$000(Lmiui/slide/SlideCloudConfigHelper;Landroid/content/Context;)V

    iget-object v0, p0, Lmiui/slide/SlideCloudConfigHelper$1;->this$0:Lmiui/slide/SlideCloudConfigHelper;

    invoke-virtual {v0}, Lmiui/slide/SlideCloudConfigHelper;->registerSlideActivityChangeListener()V

    return-void
.end method
