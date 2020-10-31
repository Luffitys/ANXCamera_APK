.class public Landroid/util/BoostFramework$WorkloadType;
.super Ljava/lang/Object;
.source "BoostFramework.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/BoostFramework;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WorkloadType"
.end annotation


# static fields
.field public static final APP:I = 0x1

.field public static final BROWSER:I = 0x3

.field public static final GAME:I = 0x2

.field public static final NOT_KNOWN:I = 0x0

.field public static final PREPROAPP:I = 0x4


# instance fields
.field final synthetic this$0:Landroid/util/BoostFramework;


# direct methods
.method public constructor <init>(Landroid/util/BoostFramework;)V
    .registers 2

    iput-object p1, p0, Landroid/util/BoostFramework$WorkloadType;->this$0:Landroid/util/BoostFramework;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
