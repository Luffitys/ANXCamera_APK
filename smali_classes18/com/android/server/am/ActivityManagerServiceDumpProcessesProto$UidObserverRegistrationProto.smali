.class public final Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$UidObserverRegistrationProto;
.super Ljava/lang/Object;
.source "ActivityManagerServiceDumpProcessesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UidObserverRegistrationProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$UidObserverRegistrationProto$ProcState;
    }
.end annotation


# static fields
.field public static final CUT_POINT:J = 0x10500000004L

.field public static final FLAGS:J = 0x20e00000003L

.field public static final LAST_PROC_STATES:J = 0x20b00000005L

.field public static final PACKAGE:J = 0x10900000002L

.field public static final UID:J = 0x10500000001L


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto$UidObserverRegistrationProto;->this$0:Lcom/android/server/am/ActivityManagerServiceDumpProcessesProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
