.class public final synthetic Lcom/android/camera/fragment/top/OooOOOo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic OooO00o:I

.field public final synthetic OooO0O0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/camera/fragment/top/OooOOOo;->OooO00o:I

    iput-object p2, p0, Lcom/android/camera/fragment/top/OooOOOo;->OooO0O0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/camera/fragment/top/OooOOOo;->OooO00o:I

    iget-object p0, p0, Lcom/android/camera/fragment/top/OooOOOo;->OooO0O0:Ljava/util/List;

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {v0, p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->OooOO0(ILjava/util/List;Landroid/widget/ImageView;)V

    return-void
.end method
