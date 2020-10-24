.class public final synthetic Lcom/android/camera/fragment/mimoji/OooO0oo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectAdapter$OnSelectListener;


# instance fields
.field public final synthetic OooO00o:Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/mimoji/OooO0oo;->OooO00o:Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;

    return-void
.end method


# virtual methods
.method public final onSelectListener(Ljava/lang/Object;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/OooO0oo;->OooO00o:Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;

    check-cast p1, Lcom/android/camera/fragment/mimoji/MimojiTypeBean;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->OooO0Oo(Lcom/android/camera/fragment/mimoji/MimojiTypeBean;I)V

    return-void
.end method
