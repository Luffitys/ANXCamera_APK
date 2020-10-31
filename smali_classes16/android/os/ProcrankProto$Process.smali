.class public final Landroid/os/ProcrankProto$Process;
.super Ljava/lang/Object;
.source "ProcrankProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ProcrankProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Process"
.end annotation


# static fields
.field public static final CMDLINE:J = 0x1090000000aL

.field public static final PID:J = 0x10500000001L

.field public static final PSS:J = 0x10300000004L

.field public static final PSWAP:J = 0x10300000007L

.field public static final RSS:J = 0x10300000003L

.field public static final SWAP:J = 0x10300000006L

.field public static final USS:J = 0x10300000005L

.field public static final USWAP:J = 0x10300000008L

.field public static final VSS:J = 0x10300000002L

.field public static final ZSWAP:J = 0x10300000009L


# instance fields
.field final synthetic this$0:Landroid/os/ProcrankProto;


# direct methods
.method public constructor <init>(Landroid/os/ProcrankProto;)V
    .registers 2

    iput-object p1, p0, Landroid/os/ProcrankProto$Process;->this$0:Landroid/os/ProcrankProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
