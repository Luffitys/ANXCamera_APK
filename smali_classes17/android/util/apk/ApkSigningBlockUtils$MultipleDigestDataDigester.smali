.class Landroid/util/apk/ApkSigningBlockUtils$MultipleDigestDataDigester;
.super Ljava/lang/Object;
.source "ApkSigningBlockUtils.java"

# interfaces
.implements Landroid/util/apk/DataDigester;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/apk/ApkSigningBlockUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultipleDigestDataDigester"
.end annotation


# instance fields
.field private final mMds:[Ljava/security/MessageDigest;


# direct methods
.method constructor <init>([Ljava/security/MessageDigest;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/util/apk/ApkSigningBlockUtils$MultipleDigestDataDigester;->mMds:[Ljava/security/MessageDigest;

    return-void
.end method


# virtual methods
.method public consume(Ljava/nio/ByteBuffer;)V
    .registers 7

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-object v0, p0, Landroid/util/apk/ApkSigningBlockUtils$MultipleDigestDataDigester;->mMds:[Ljava/security/MessageDigest;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v3, v1, :cond_16

    aget-object v4, v0, v3

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v4, p1}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_16
    return-void
.end method
