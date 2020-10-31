.class public Lmiui/maml/data/BatteryVariableUpdater;
.super Lmiui/maml/data/NotifierVariableUpdater;
.source "BatteryVariableUpdater.java"


# static fields
.field public static final USE_TAG:Ljava/lang/String; = "Battery"


# instance fields
.field private mBatteryLevel:Lmiui/maml/data/IndexedVariable;

.field private mLevel:I


# direct methods
.method public constructor <init>(Lmiui/maml/data/VariableUpdaterManager;)V
    .registers 6

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {p0, p1, v0}, Lmiui/maml/data/NotifierVariableUpdater;-><init>(Lmiui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lmiui/maml/data/BatteryVariableUpdater;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    const-string v2, "battery_level"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/data/BatteryVariableUpdater;->mBatteryLevel:Lmiui/maml/data/IndexedVariable;

    return-void
.end method


# virtual methods
.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .registers 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, "level"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_2f

    iget v1, p0, Lmiui/maml/data/BatteryVariableUpdater;->mLevel:I

    if-eq v1, v0, :cond_2f

    iget-object v1, p0, Lmiui/maml/data/BatteryVariableUpdater;->mBatteryLevel:Lmiui/maml/data/IndexedVariable;

    const/16 v2, 0x64

    if-lt v0, v2, :cond_22

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    goto :goto_23

    :cond_22
    int-to-double v2, v0

    :goto_23
    invoke-virtual {v1, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iput v0, p0, Lmiui/maml/data/BatteryVariableUpdater;->mLevel:I

    invoke-virtual {p0}, Lmiui/maml/data/BatteryVariableUpdater;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    :cond_2f
    return-void
.end method
