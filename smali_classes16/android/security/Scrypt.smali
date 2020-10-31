.class public Landroid/security/Scrypt;
.super Ljava/lang/Object;
.source "Scrypt.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method native nativeScrypt([B[BIIII)[B
.end method

.method public scrypt([B[BIIII)[B
    .registers 8

    invoke-virtual/range {p0 .. p6}, Landroid/security/Scrypt;->nativeScrypt([B[BIIII)[B

    move-result-object v0

    return-object v0
.end method
