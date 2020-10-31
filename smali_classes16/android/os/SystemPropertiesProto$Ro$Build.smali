.class public final Landroid/os/SystemPropertiesProto$Ro$Build;
.super Ljava/lang/Object;
.source "SystemPropertiesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemPropertiesProto$Ro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Build"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/SystemPropertiesProto$Ro$Build$Version;
    }
.end annotation


# static fields
.field public static final DATE:J = 0x10900000001L

.field public static final DATE_UTC:J = 0x10300000002L

.field public static final DESCRIPTION:J = 0x10900000003L

.field public static final DISPLAY_ID:J = 0x10900000004L

.field public static final HOST:J = 0x10900000005L

.field public static final ID:J = 0x10900000006L

.field public static final PRODUCT:J = 0x10900000007L

.field public static final SYSTEM_ROOT_IMAGE:J = 0x10800000008L

.field public static final TAGS:J = 0x10900000009L

.field public static final TYPE:J = 0x1090000000aL

.field public static final USER:J = 0x1090000000bL

.field public static final VERSION:J = 0x10b0000000cL


# instance fields
.field final synthetic this$1:Landroid/os/SystemPropertiesProto$Ro;


# direct methods
.method public constructor <init>(Landroid/os/SystemPropertiesProto$Ro;)V
    .registers 2

    iput-object p1, p0, Landroid/os/SystemPropertiesProto$Ro$Build;->this$1:Landroid/os/SystemPropertiesProto$Ro;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
