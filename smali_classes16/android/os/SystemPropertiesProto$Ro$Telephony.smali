.class public final Landroid/os/SystemPropertiesProto$Ro$Telephony;
.super Ljava/lang/Object;
.source "SystemPropertiesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemPropertiesProto$Ro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Telephony"
.end annotation


# static fields
.field public static final CALL_RING_MULTIPLE:J = 0x10800000001L

.field public static final DEFAULT_CDMA_SUB:J = 0x10500000002L

.field public static final DEFAULT_NETWORK:J = 0x10500000003L


# instance fields
.field final synthetic this$1:Landroid/os/SystemPropertiesProto$Ro;


# direct methods
.method public constructor <init>(Landroid/os/SystemPropertiesProto$Ro;)V
    .registers 2

    iput-object p1, p0, Landroid/os/SystemPropertiesProto$Ro$Telephony;->this$1:Landroid/os/SystemPropertiesProto$Ro;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
