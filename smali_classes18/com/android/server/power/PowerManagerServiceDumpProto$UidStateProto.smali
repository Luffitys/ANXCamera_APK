.class public final Lcom/android/server/power/PowerManagerServiceDumpProto$UidStateProto;
.super Ljava/lang/Object;
.source "PowerManagerServiceDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerServiceDumpProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UidStateProto"
.end annotation


# static fields
.field public static final IS_ACTIVE:J = 0x10800000003L

.field public static final NUM_WAKE_LOCKS:J = 0x10500000004L

.field public static final PROCESS_STATE:J = 0x10e00000005L

.field public static final UID:J = 0x10500000001L

.field public static final UID_STRING:J = 0x10900000002L


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerServiceDumpProto;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerServiceDumpProto;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/PowerManagerServiceDumpProto$UidStateProto;->this$0:Lcom/android/server/power/PowerManagerServiceDumpProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
