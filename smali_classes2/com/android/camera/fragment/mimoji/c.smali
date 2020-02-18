.class public final synthetic Lcom/android/camera/fragment/mimoji/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/camera/ui/autoselectview/AutoSelectAdapter$OnSelectListener;


# instance fields
.field private final synthetic wb:Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/mimoji/c;->wb:Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;

    return-void
.end method


# virtual methods
.method public final onSelectListener(Ljava/lang/Object;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/c;->wb:Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;

    check-cast p1, Lcom/android/camera/fragment/mimoji/MimojiTypeBean;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->a(Lcom/android/camera/fragment/mimoji/MimojiTypeBean;I)V

    return-void
.end method
