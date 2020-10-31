.class public final Landroid/util/BinaryLogEntry$Elem;
.super Ljava/lang/Object;
.source "BinaryLogEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/BinaryLogEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Elem"
.end annotation


# static fields
.field public static final EVENT_TYPE_FLOAT:I = 0x4

.field public static final EVENT_TYPE_INT:I = 0x0

.field public static final EVENT_TYPE_LIST:I = 0x3

.field public static final EVENT_TYPE_LIST_STOP:I = 0xa

.field public static final EVENT_TYPE_LONG:I = 0x1

.field public static final EVENT_TYPE_STRING:I = 0x2

.field public static final EVENT_TYPE_UNKNOWN:I = 0x3f

.field public static final TYPE:J = 0x10e00000001L

.field public static final VAL_FLOAT:J = 0x10200000005L

.field public static final VAL_INT32:J = 0x10500000002L

.field public static final VAL_INT64:J = 0x10300000003L

.field public static final VAL_STRING:J = 0x10900000004L


# instance fields
.field final synthetic this$0:Landroid/util/BinaryLogEntry;


# direct methods
.method public constructor <init>(Landroid/util/BinaryLogEntry;)V
    .registers 2

    iput-object p1, p0, Landroid/util/BinaryLogEntry$Elem;->this$0:Landroid/util/BinaryLogEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
