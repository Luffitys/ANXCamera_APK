.class public final synthetic Lcom/android/camera/module/impl/component/OooO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic OooO00o:Lcom/android/camera/module/impl/component/ConfigChangeImpl;

.field public final synthetic OooO0O0:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/impl/component/ConfigChangeImpl;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/impl/component/OooO;->OooO00o:Lcom/android/camera/module/impl/component/ConfigChangeImpl;

    iput-boolean p2, p0, Lcom/android/camera/module/impl/component/OooO;->OooO0O0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/impl/component/OooO;->OooO00o:Lcom/android/camera/module/impl/component/ConfigChangeImpl;

    iget-boolean p0, p0, Lcom/android/camera/module/impl/component/OooO;->OooO0O0:Z

    check-cast p1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->OooOO0O(ZLcom/android/camera/module/BaseModule;)V

    return-void
.end method
