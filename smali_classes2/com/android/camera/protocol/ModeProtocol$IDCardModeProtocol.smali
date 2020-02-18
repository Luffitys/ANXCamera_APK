.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$IDCardModeProtocol;
.super Ljava/lang/Object;
.source "ModeProtocol.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/protocol/ModeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IDCardModeProtocol"
.end annotation


# static fields
.field public static final TYPE_TAG:I = 0xe9


# virtual methods
.method public abstract callBackEvent()V
.end method

.method public abstract getCurrentPictureName()Ljava/lang/String;
.end method

.method public abstract switchNextPage()V
.end method
