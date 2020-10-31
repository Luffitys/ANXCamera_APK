.class public final Landroid/util/EventLogTag$ValueDescriptor;
.super Ljava/lang/Object;
.source "EventLogTag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/EventLogTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ValueDescriptor"
.end annotation


# static fields
.field public static final ALLOCATIONS:I = 0x4

.field public static final BYTES:I = 0x2

.field public static final FLOAT:I = 0x5

.field public static final ID:I = 0x5

.field public static final INT:I = 0x1

.field public static final LIST:I = 0x4

.field public static final LONG:I = 0x2

.field public static final MILLISECONDS:I = 0x3

.field public static final NAME:J = 0x10900000001L

.field public static final OBJECTS:I = 0x1

.field public static final PERCENT:I = 0x6

.field public static final SECONDS:I = 0x73

.field public static final STRING:I = 0x3

.field public static final TYPE:J = 0x10e00000002L

.field public static final UNIT:J = 0x10e00000003L

.field public static final UNKNOWN:I

.field public static final UNSET:I


# instance fields
.field final synthetic this$0:Landroid/util/EventLogTag;


# direct methods
.method public constructor <init>(Landroid/util/EventLogTag;)V
    .registers 2

    iput-object p1, p0, Landroid/util/EventLogTag$ValueDescriptor;->this$0:Landroid/util/EventLogTag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
