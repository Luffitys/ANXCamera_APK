.class public final Landroid/content/pm/ActivityPresentationInfo;
.super Ljava/lang/Object;
.source "ActivityPresentationInfo.java"


# instance fields
.field public final componentName:Landroid/content/ComponentName;

.field public final displayId:I

.field public final taskId:I


# direct methods
.method public constructor <init>(IILandroid/content/ComponentName;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/content/pm/ActivityPresentationInfo;->taskId:I

    iput p2, p0, Landroid/content/pm/ActivityPresentationInfo;->displayId:I

    iput-object p3, p0, Landroid/content/pm/ActivityPresentationInfo;->componentName:Landroid/content/ComponentName;

    return-void
.end method
