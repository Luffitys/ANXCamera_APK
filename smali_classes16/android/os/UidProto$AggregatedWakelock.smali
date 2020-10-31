.class public final Landroid/os/UidProto$AggregatedWakelock;
.super Ljava/lang/Object;
.source "UidProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UidProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AggregatedWakelock"
.end annotation


# static fields
.field public static final BACKGROUND_PARTIAL_DURATION_MS:J = 0x10300000002L

.field public static final PARTIAL_DURATION_MS:J = 0x10300000001L


# instance fields
.field final synthetic this$0:Landroid/os/UidProto;


# direct methods
.method public constructor <init>(Landroid/os/UidProto;)V
    .registers 2

    iput-object p1, p0, Landroid/os/UidProto$AggregatedWakelock;->this$0:Landroid/os/UidProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
