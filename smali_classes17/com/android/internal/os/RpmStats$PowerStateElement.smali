.class public Lcom/android/internal/os/RpmStats$PowerStateElement;
.super Ljava/lang/Object;
.source "RpmStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/RpmStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PowerStateElement"
.end annotation


# instance fields
.field public mCount:I

.field public mTimeMs:J


# direct methods
.method private constructor <init>(JI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/internal/os/RpmStats$PowerStateElement;->mTimeMs:J

    iput p3, p0, Lcom/android/internal/os/RpmStats$PowerStateElement;->mCount:I

    return-void
.end method

.method synthetic constructor <init>(JILcom/android/internal/os/RpmStats$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/RpmStats$PowerStateElement;-><init>(JI)V

    return-void
.end method
