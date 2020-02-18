.class public final synthetic Lcom/android/camera/fragment/mimoji/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/camera/fragment/mimoji/MimojiCreateItemAdapter$OnItemClickListener;


# instance fields
.field private final synthetic wb:Lcom/android/camera/fragment/mimoji/FragmentMimoji;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/mimoji/FragmentMimoji;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/mimoji/a;->wb:Lcom/android/camera/fragment/mimoji/FragmentMimoji;

    return-void
.end method


# virtual methods
.method public final onItemClick(Lcom/android/camera/fragment/mimoji/MimojiInfo;ILandroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/a;->wb:Lcom/android/camera/fragment/mimoji/FragmentMimoji;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/fragment/mimoji/FragmentMimoji;->a(Lcom/android/camera/fragment/mimoji/MimojiInfo;ILandroid/view/View;)V

    return-void
.end method
