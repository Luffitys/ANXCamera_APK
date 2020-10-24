.class public Lcom/android/camera/features/mimoji2/bean/MimojiEmoticonInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mEmoInfo:Lcom/arcsoft/avatar2/emoticon/EmoInfo;

.field private mIsSelected:Z

.field private mName:I


# direct methods
.method public constructor <init>(Lcom/arcsoft/avatar2/emoticon/EmoInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/bean/MimojiEmoticonInfo;->mEmoInfo:Lcom/arcsoft/avatar2/emoticon/EmoInfo;

    return-void
.end method

.method public constructor <init>(Lcom/arcsoft/avatar2/emoticon/EmoInfo;Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/bean/MimojiEmoticonInfo;->mEmoInfo:Lcom/arcsoft/avatar2/emoticon/EmoInfo;

    iput-object p2, p0, Lcom/android/camera/features/mimoji2/bean/MimojiEmoticonInfo;->mBitmap:Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/android/camera/features/mimoji2/bean/MimojiEmoticonInfo;->mName:I

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/bean/MimojiEmoticonInfo;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getEmoInfo()Lcom/arcsoft/avatar2/emoticon/EmoInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/bean/MimojiEmoticonInfo;->mEmoInfo:Lcom/arcsoft/avatar2/emoticon/EmoInfo;

    return-object p0
.end method

.method public getName()I
    .locals 0

    iget p0, p0, Lcom/android/camera/features/mimoji2/bean/MimojiEmoticonInfo;->mName:I

    return p0
.end method

.method public isSelected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/features/mimoji2/bean/MimojiEmoticonInfo;->mIsSelected:Z

    return p0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/bean/MimojiEmoticonInfo;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setEmoInfo(Lcom/arcsoft/avatar2/emoticon/EmoInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/bean/MimojiEmoticonInfo;->mEmoInfo:Lcom/arcsoft/avatar2/emoticon/EmoInfo;

    return-void
.end method

.method public setName(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/features/mimoji2/bean/MimojiEmoticonInfo;->mName:I

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/features/mimoji2/bean/MimojiEmoticonInfo;->mIsSelected:Z

    return-void
.end method
