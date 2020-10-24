.class public interface abstract Lcom/android/camera/features/mimoji2/module/protocol/MimojiModeProtocol$MimojiEditor2$MimojiEmoticon;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;


# static fields
.field public static final TYPE_TAG:I = 0xfa


# virtual methods
.method public abstract backToPreview(Z)V
.end method

.method public abstract coverEmoticonError()V
.end method

.method public abstract coverEmoticonSuccess()V
.end method

.method public abstract release()V
.end method

.method public abstract setIsBackToPreview(Z)V
.end method

.method public abstract updateEmoticonGifProgress(I)V
.end method

.method public abstract updateEmoticonPictureProgress(Ljava/lang/String;Lcom/arcsoft/avatar2/emoticon/EmoInfo;Z)V
.end method

.method public abstract updateEmoticonThumbnailProgress(ILcom/arcsoft/avatar2/emoticon/EmoInfo;I)V
.end method
