.class public final Lcom/android/server/usage/IntervalStatsObfuscatedProto$Configuration;
.super Ljava/lang/Object;
.source "IntervalStatsObfuscatedProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/IntervalStatsObfuscatedProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Configuration"
.end annotation


# static fields
.field public static final ACTIVE:J = 0x10800000005L

.field public static final CONFIG:J = 0x10b00000001L

.field public static final COUNT:J = 0x10500000004L

.field public static final LAST_TIME_ACTIVE_MS:J = 0x10300000002L

.field public static final TOTAL_TIME_ACTIVE_MS:J = 0x10300000003L


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/IntervalStatsObfuscatedProto;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/IntervalStatsObfuscatedProto;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/usage/IntervalStatsObfuscatedProto$Configuration;->this$0:Lcom/android/server/usage/IntervalStatsObfuscatedProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
