.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$MiLivePlayerControl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;


# static fields
.field public static final TYPE_TAG:I = 0xf2


# virtual methods
.method public abstract getSaveContentValues()Landroid/content/ContentValues;
.end method

.method public abstract isShowing()Z
.end method

.method public abstract onLiveSaveToLocalFinished(Landroid/net/Uri;Ljava/lang/String;)V
.end method

.method public abstract prepare(Landroid/content/ContentValues;Ljava/util/List;Ljava/lang/String;)V
.end method

.method public abstract release()V
.end method

.method public abstract show()V
.end method

.method public abstract startLiveRecordSaving()V
.end method
