.class public final Lcom/android/server/usage/IntervalStatsObfuscatedProto$CountAndTime;
.super Ljava/lang/Object;
.source "IntervalStatsObfuscatedProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/IntervalStatsObfuscatedProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CountAndTime"
.end annotation


# static fields
.field public static final COUNT:J = 0x10500000001L

.field public static final TIME_MS:J = 0x10300000002L


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/IntervalStatsObfuscatedProto;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/IntervalStatsObfuscatedProto;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/usage/IntervalStatsObfuscatedProto$CountAndTime;->this$0:Lcom/android/server/usage/IntervalStatsObfuscatedProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
