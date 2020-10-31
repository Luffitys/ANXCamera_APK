.class public final Landroid/os/SystemPropertiesProto$PmDexopt;
.super Ljava/lang/Object;
.source "SystemPropertiesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemPropertiesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PmDexopt"
.end annotation


# static fields
.field public static final AB_OTA:J = 0x10900000001L

.field public static final BG_DEXOPT:J = 0x10900000002L

.field public static final BOOT:J = 0x10900000003L

.field public static final FIRST_BOOT:J = 0x10900000004L

.field public static final INSTALL:J = 0x10900000005L


# instance fields
.field final synthetic this$0:Landroid/os/SystemPropertiesProto;


# direct methods
.method public constructor <init>(Landroid/os/SystemPropertiesProto;)V
    .registers 2

    iput-object p1, p0, Landroid/os/SystemPropertiesProto$PmDexopt;->this$0:Landroid/os/SystemPropertiesProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
