.class Landroid/view/DisplayInfoInjector$2;
.super Ljava/util/ArrayList;
.source "DisplayInfoInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/DisplayInfoInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "com.miui.home"

    invoke-virtual {p0, v0}, Landroid/view/DisplayInfoInjector$2;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.camera"

    invoke-virtual {p0, v0}, Landroid/view/DisplayInfoInjector$2;->add(Ljava/lang/Object;)Z

    const-string v0, "com.miui.gallery"

    invoke-virtual {p0, v0}, Landroid/view/DisplayInfoInjector$2;->add(Ljava/lang/Object;)Z

    const-string v0, "com.benqu.wuta"

    invoke-virtual {p0, v0}, Landroid/view/DisplayInfoInjector$2;->add(Ljava/lang/Object;)Z

    const-string v0, "com.miui.video"

    invoke-virtual {p0, v0}, Landroid/view/DisplayInfoInjector$2;->add(Ljava/lang/Object;)Z

    const-string v0, "com.baidu.input_mi"

    invoke-virtual {p0, v0}, Landroid/view/DisplayInfoInjector$2;->add(Ljava/lang/Object;)Z

    const-string v0, "com.iflytek.inputmethod.miui"

    invoke-virtual {p0, v0}, Landroid/view/DisplayInfoInjector$2;->add(Ljava/lang/Object;)Z

    const-string v0, "com.sohu.inputmethod.sogou.xiaomi"

    invoke-virtual {p0, v0}, Landroid/view/DisplayInfoInjector$2;->add(Ljava/lang/Object;)Z

    const-string v0, "com.miui.securityinputmethod"

    invoke-virtual {p0, v0}, Landroid/view/DisplayInfoInjector$2;->add(Ljava/lang/Object;)Z

    return-void
.end method
