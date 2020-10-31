.class public final Lcom/android/server/am/MemInfoDumpProto$ProcessMemory$AppSummary;
.super Ljava/lang/Object;
.source "MemInfoDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MemInfoDumpProto$ProcessMemory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AppSummary"
.end annotation


# static fields
.field public static final CODE_PSS_KB:J = 0x10500000003L

.field public static final CODE_RSS_KB:J = 0x1050000000cL

.field public static final GRAPHICS_PSS_KB:J = 0x10500000005L

.field public static final GRAPHICS_RSS_KB:J = 0x1050000000eL

.field public static final JAVA_HEAP_PSS_KB:J = 0x10500000001L

.field public static final JAVA_HEAP_RSS_KB:J = 0x1050000000aL

.field public static final NATIVE_HEAP_PSS_KB:J = 0x10500000002L

.field public static final NATIVE_HEAP_RSS_KB:J = 0x1050000000bL

.field public static final PRIVATE_OTHER_PSS_KB:J = 0x10500000006L

.field public static final STACK_PSS_KB:J = 0x10500000004L

.field public static final STACK_RSS_KB:J = 0x1050000000dL

.field public static final SYSTEM_PSS_KB:J = 0x10500000007L

.field public static final TOTAL_SWAP_KB:J = 0x10500000009L

.field public static final TOTAL_SWAP_PSS:J = 0x10500000008L

.field public static final UNKNOWN_RSS_KB:J = 0x1050000000fL


# instance fields
.field final synthetic this$1:Lcom/android/server/am/MemInfoDumpProto$ProcessMemory;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MemInfoDumpProto$ProcessMemory;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/MemInfoDumpProto$ProcessMemory$AppSummary;->this$1:Lcom/android/server/am/MemInfoDumpProto$ProcessMemory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
