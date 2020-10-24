.class public final synthetic Lcom/android/camera/data/observeable/OooO0OO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic OooO00o:Lcom/android/camera/data/observeable/VMResource;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/data/observeable/VMResource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/observeable/OooO0OO;->OooO00o:Lcom/android/camera/data/observeable/VMResource;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/observeable/OooO0OO;->OooO00o:Lcom/android/camera/data/observeable/VMResource;

    check-cast p1, Lcom/android/camera/resource/BaseResourceItem;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/observeable/VMResource;->OooO0Oo(Lcom/android/camera/resource/BaseResourceItem;)V

    return-void
.end method
