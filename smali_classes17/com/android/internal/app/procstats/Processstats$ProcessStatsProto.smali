.class public final Lcom/android/internal/app/procstats/Processstats$ProcessStatsProto;
.super Ljava/lang/Object;
.source "Processstats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/procstats/Processstats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ProcessStatsProto"
.end annotation


# static fields
.field public static final MEM_FACTOR_CRITICAL:I = 0x3

.field public static final MEM_FACTOR_LOW:I = 0x2

.field public static final MEM_FACTOR_MODERATE:I = 0x1

.field public static final MEM_FACTOR_NORMAL:I


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/procstats/Processstats;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/procstats/Processstats;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/app/procstats/Processstats$ProcessStatsProto;->this$0:Lcom/android/internal/app/procstats/Processstats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
