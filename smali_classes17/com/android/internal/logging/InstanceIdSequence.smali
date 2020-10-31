.class public Lcom/android/internal/logging/InstanceIdSequence;
.super Ljava/lang/Object;
.source "InstanceIdSequence.java"


# instance fields
.field protected final mInstanceIdMax:I

.field private final mRandom:Ljava/util/Random;


# direct methods
.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/android/internal/logging/InstanceIdSequence;->mRandom:Ljava/util/Random;

    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/logging/InstanceIdSequence;->mInstanceIdMax:I

    return-void
.end method


# virtual methods
.method public newInstanceId()Lcom/android/internal/logging/InstanceId;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/logging/InstanceIdSequence;->mRandom:Ljava/util/Random;

    iget v1, p0, Lcom/android/internal/logging/InstanceIdSequence;->mInstanceIdMax:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceIdInternal(I)Lcom/android/internal/logging/InstanceId;

    move-result-object v0

    return-object v0
.end method

.method protected newInstanceIdInternal(I)Lcom/android/internal/logging/InstanceId;
    .registers 3

    new-instance v0, Lcom/android/internal/logging/InstanceId;

    invoke-direct {v0, p1}, Lcom/android/internal/logging/InstanceId;-><init>(I)V

    return-object v0
.end method
