.class public final Lcom/android/server/am/MemInfoDumpProto$MemItem;
.super Ljava/lang/Object;
.source "MemInfoDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MemInfoDumpProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MemItem"
.end annotation


# static fields
.field public static final HAS_ACTIVITIES:J = 0x10800000005L

.field public static final ID:J = 0x10500000003L

.field public static final IS_PROC:J = 0x10800000004L

.field public static final LABEL:J = 0x10900000002L

.field public static final PSS_KB:J = 0x10300000006L

.field public static final RSS_KB:J = 0x10300000009L

.field public static final SUB_ITEMS:J = 0x20b00000008L

.field public static final SWAP_PSS_KB:J = 0x10300000007L

.field public static final TAG:J = 0x10900000001L


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MemInfoDumpProto;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MemInfoDumpProto;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/MemInfoDumpProto$MemItem;->this$0:Lcom/android/server/am/MemInfoDumpProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
