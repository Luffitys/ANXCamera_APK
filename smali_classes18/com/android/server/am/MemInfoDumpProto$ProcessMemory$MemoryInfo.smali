.class public final Lcom/android/server/am/MemInfoDumpProto$ProcessMemory$MemoryInfo;
.super Ljava/lang/Object;
.source "MemInfoDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MemInfoDumpProto$ProcessMemory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MemoryInfo"
.end annotation


# static fields
.field public static final CLEAN_PSS_KB:J = 0x10500000003L

.field public static final DIRTY_SWAP_KB:J = 0x10500000008L

.field public static final DIRTY_SWAP_PSS_KB:J = 0x10500000009L

.field public static final NAME:J = 0x10900000001L

.field public static final PRIVATE_CLEAN_KB:J = 0x10500000007L

.field public static final PRIVATE_DIRTY_KB:J = 0x10500000005L

.field public static final SHARED_CLEAN_KB:J = 0x10500000006L

.field public static final SHARED_DIRTY_KB:J = 0x10500000004L

.field public static final TOTAL_PSS_KB:J = 0x10500000002L

.field public static final TOTAL_RSS_KB:J = 0x1050000000aL


# instance fields
.field final synthetic this$1:Lcom/android/server/am/MemInfoDumpProto$ProcessMemory;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MemInfoDumpProto$ProcessMemory;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/MemInfoDumpProto$ProcessMemory$MemoryInfo;->this$1:Lcom/android/server/am/MemInfoDumpProto$ProcessMemory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
