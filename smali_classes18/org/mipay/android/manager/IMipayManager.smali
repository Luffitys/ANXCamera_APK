.class public interface abstract Lorg/mipay/android/manager/IMipayManager;
.super Ljava/lang/Object;
.source "IMipayManager.java"


# virtual methods
.method public abstract contains(Ljava/lang/String;)Z
.end method

.method public abstract generateKeyPair(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getFpIds()Ljava/lang/String;
.end method

.method public abstract getSupportBIOTypes(Landroid/content/Context;)I
.end method

.method public abstract getVersion()I
.end method

.method public abstract removeAllKey()I
.end method

.method public abstract sign()[B
.end method

.method public abstract signInit(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract signUpdate([BII)I
.end method
