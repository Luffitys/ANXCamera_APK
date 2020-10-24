.class public final synthetic Lcom/android/camera/features/mimoji2/fragment/edit/OooOO0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic OooO00o:Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEmoticon;

.field public final synthetic OooO0O0:Lcom/arcsoft/avatar2/emoticon/EmoInfo;

.field public final synthetic OooO0OO:I

.field public final synthetic OooO0Oo:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEmoticon;Lcom/arcsoft/avatar2/emoticon/EmoInfo;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/OooOO0;->OooO00o:Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEmoticon;

    iput-object p2, p0, Lcom/android/camera/features/mimoji2/fragment/edit/OooOO0;->OooO0O0:Lcom/arcsoft/avatar2/emoticon/EmoInfo;

    iput p3, p0, Lcom/android/camera/features/mimoji2/fragment/edit/OooOO0;->OooO0OO:I

    iput p4, p0, Lcom/android/camera/features/mimoji2/fragment/edit/OooOO0;->OooO0Oo:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/OooOO0;->OooO00o:Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEmoticon;

    iget-object v1, p0, Lcom/android/camera/features/mimoji2/fragment/edit/OooOO0;->OooO0O0:Lcom/arcsoft/avatar2/emoticon/EmoInfo;

    iget v2, p0, Lcom/android/camera/features/mimoji2/fragment/edit/OooOO0;->OooO0OO:I

    iget p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/OooOO0;->OooO0Oo:I

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/camera/features/mimoji2/fragment/edit/FragmentMimojiEmoticon;->OooOoO(Lcom/arcsoft/avatar2/emoticon/EmoInfo;II)V

    return-void
.end method
