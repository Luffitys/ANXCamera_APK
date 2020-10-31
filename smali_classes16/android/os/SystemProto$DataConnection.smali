.class public final Landroid/os/SystemProto$DataConnection;
.super Ljava/lang/Object;
.source "SystemProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DataConnection"
.end annotation


# static fields
.field public static final IS_NONE:J = 0x10800000002L

.field public static final NAME:J = 0x10e00000001L

.field public static final TOTAL:J = 0x10b00000003L


# instance fields
.field final synthetic this$0:Landroid/os/SystemProto;


# direct methods
.method public constructor <init>(Landroid/os/SystemProto;)V
    .registers 2

    iput-object p1, p0, Landroid/os/SystemProto$DataConnection;->this$0:Landroid/os/SystemProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
