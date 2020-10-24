.class public final synthetic Lcom/android/camera/fragment/vv/OooOO0o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic OooO00o:Lcom/android/camera/fragment/vv/FragmentVVGallery;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/vv/FragmentVVGallery;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/vv/OooOO0o;->OooO00o:Lcom/android/camera/fragment/vv/FragmentVVGallery;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/vv/OooOO0o;->OooO00o:Lcom/android/camera/fragment/vv/FragmentVVGallery;

    check-cast p1, Lcom/android/camera/data/observeable/RxData$DataWrap;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/vv/FragmentVVGallery;->OooO0Oo(Lcom/android/camera/data/observeable/RxData$DataWrap;)V

    return-void
.end method
