.class public final Lcom/android/server/am/AppErrorsProto$BadProcess$Entry;
.super Ljava/lang/Object;
.source "AppErrorsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppErrorsProto$BadProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Entry"
.end annotation


# static fields
.field public static final CRASHED_AT_MS:J = 0x10300000002L

.field public static final LONG_MSG:J = 0x10900000004L

.field public static final SHORT_MSG:J = 0x10900000003L

.field public static final STACK:J = 0x10900000005L

.field public static final UID:J = 0x10500000001L


# instance fields
.field final synthetic this$1:Lcom/android/server/am/AppErrorsProto$BadProcess;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppErrorsProto$BadProcess;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/AppErrorsProto$BadProcess$Entry;->this$1:Lcom/android/server/am/AppErrorsProto$BadProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
