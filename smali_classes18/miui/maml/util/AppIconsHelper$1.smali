.class Lmiui/maml/util/AppIconsHelper$1;
.super Ljava/lang/Object;
.source "AppIconsHelper.java"

# interfaces
.implements Lmiui/maml/util/RendererCoreCache$OnCreateRootCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/util/AppIconsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateRoot(Lmiui/maml/ScreenElementRoot;)V
    .registers 3

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmiui/maml/ScreenElementRoot;->setScaleByDensity(Z)V

    :cond_6
    return-void
.end method
