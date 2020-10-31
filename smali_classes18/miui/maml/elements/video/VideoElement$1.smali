.class Lmiui/maml/elements/video/VideoElement$1;
.super Ljava/lang/Object;
.source "VideoElement.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/video/VideoElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/video/VideoElement;


# direct methods
.method constructor <init>(Lmiui/maml/elements/video/VideoElement;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/elements/video/VideoElement$1;->this$0:Lmiui/maml/elements/video/VideoElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    return-void
.end method

.method public onLowMemory()V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lmiui/maml/elements/video/VideoElement$1;->this$0:Lmiui/maml/elements/video/VideoElement;

    # getter for: Lmiui/maml/elements/video/VideoElement;->mSource:Lmiui/maml/util/MamlMediaDataSource;
    invoke-static {v0}, Lmiui/maml/elements/video/VideoElement;->access$000(Lmiui/maml/elements/video/VideoElement;)Lmiui/maml/util/MamlMediaDataSource;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lmiui/maml/elements/video/VideoElement$1;->this$0:Lmiui/maml/elements/video/VideoElement;

    # getter for: Lmiui/maml/elements/video/VideoElement;->mSource:Lmiui/maml/util/MamlMediaDataSource;
    invoke-static {v0}, Lmiui/maml/elements/video/VideoElement;->access$000(Lmiui/maml/elements/video/VideoElement;)Lmiui/maml/util/MamlMediaDataSource;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/util/MamlMediaDataSource;->onLowMemory()V

    :cond_18
    return-void
.end method

.method public onTrimMemory(I)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lmiui/maml/elements/video/VideoElement$1;->this$0:Lmiui/maml/elements/video/VideoElement;

    # getter for: Lmiui/maml/elements/video/VideoElement;->mSource:Lmiui/maml/util/MamlMediaDataSource;
    invoke-static {v0}, Lmiui/maml/elements/video/VideoElement;->access$000(Lmiui/maml/elements/video/VideoElement;)Lmiui/maml/util/MamlMediaDataSource;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lmiui/maml/elements/video/VideoElement$1;->this$0:Lmiui/maml/elements/video/VideoElement;

    # getter for: Lmiui/maml/elements/video/VideoElement;->mSource:Lmiui/maml/util/MamlMediaDataSource;
    invoke-static {v0}, Lmiui/maml/elements/video/VideoElement;->access$000(Lmiui/maml/elements/video/VideoElement;)Lmiui/maml/util/MamlMediaDataSource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/maml/util/MamlMediaDataSource;->onTrimMemory(I)V

    :cond_18
    return-void
.end method
