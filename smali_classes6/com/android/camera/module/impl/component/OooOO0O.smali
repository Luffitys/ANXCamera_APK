.class public final synthetic Lcom/android/camera/module/impl/component/OooOO0O;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic OooO00o:Lcom/android/camera/module/impl/component/ConfigChangeImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/impl/component/ConfigChangeImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/impl/component/OooOO0O;->OooO00o:Lcom/android/camera/module/impl/component/ConfigChangeImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/impl/component/OooOO0O;->OooO00o:Lcom/android/camera/module/impl/component/ConfigChangeImpl;

    check-cast p1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->OooO0O0(Lcom/android/camera/module/BaseModule;)V

    return-void
.end method
