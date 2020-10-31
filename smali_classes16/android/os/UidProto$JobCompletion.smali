.class public final Landroid/os/UidProto$JobCompletion;
.super Ljava/lang/Object;
.source "UidProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UidProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "JobCompletion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/UidProto$JobCompletion$ReasonCount;
    }
.end annotation


# static fields
.field public static final NAME:J = 0x10900000001L

.field public static final REASON_COUNT:J = 0x20b00000002L


# instance fields
.field final synthetic this$0:Landroid/os/UidProto;


# direct methods
.method public constructor <init>(Landroid/os/UidProto;)V
    .registers 2

    iput-object p1, p0, Landroid/os/UidProto$JobCompletion;->this$0:Landroid/os/UidProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
