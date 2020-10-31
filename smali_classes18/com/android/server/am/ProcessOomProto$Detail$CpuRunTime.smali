.class public final Lcom/android/server/am/ProcessOomProto$Detail$CpuRunTime;
.super Ljava/lang/Object;
.source "ProcessOomProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ProcessOomProto$Detail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CpuRunTime"
.end annotation


# static fields
.field public static final OVER_MS:J = 0x10300000001L

.field public static final ULTILIZATION:J = 0x10200000003L

.field public static final USED_MS:J = 0x10300000002L


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ProcessOomProto$Detail;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessOomProto$Detail;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/ProcessOomProto$Detail$CpuRunTime;->this$1:Lcom/android/server/am/ProcessOomProto$Detail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
