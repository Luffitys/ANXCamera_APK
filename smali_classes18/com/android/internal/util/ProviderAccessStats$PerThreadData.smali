.class Lcom/android/internal/util/ProviderAccessStats$PerThreadData;
.super Ljava/lang/Object;
.source "ProviderAccessStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/ProviderAccessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PerThreadData"
.end annotation


# instance fields
.field public nestCount:I

.field public startUptimeMillis:J


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/util/ProviderAccessStats$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/util/ProviderAccessStats$PerThreadData;-><init>()V

    return-void
.end method
