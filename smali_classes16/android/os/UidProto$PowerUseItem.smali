.class public final Landroid/os/UidProto$PowerUseItem;
.super Ljava/lang/Object;
.source "UidProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UidProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PowerUseItem"
.end annotation


# static fields
.field public static final COMPUTED_POWER_MAH:J = 0x10100000001L

.field public static final PROPORTIONAL_SMEAR_MAH:J = 0x10100000004L

.field public static final SCREEN_POWER_MAH:J = 0x10100000003L

.field public static final SHOULD_HIDE:J = 0x10800000002L


# instance fields
.field final synthetic this$0:Landroid/os/UidProto;


# direct methods
.method public constructor <init>(Landroid/os/UidProto;)V
    .registers 2

    iput-object p1, p0, Landroid/os/UidProto$PowerUseItem;->this$0:Landroid/os/UidProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
