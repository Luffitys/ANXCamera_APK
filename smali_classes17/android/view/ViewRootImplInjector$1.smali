.class Landroid/view/ViewRootImplInjector$1;
.super Ljava/util/HashSet;
.source "ViewRootImplInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImplInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    const-string v0, "com.miui.home"

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImplInjector$1;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.systemui"

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImplInjector$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
