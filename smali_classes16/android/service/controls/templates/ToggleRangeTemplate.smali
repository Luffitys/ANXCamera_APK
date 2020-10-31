.class public final Landroid/service/controls/templates/ToggleRangeTemplate;
.super Landroid/service/controls/templates/ControlTemplate;
.source "ToggleRangeTemplate.java"


# static fields
.field private static final KEY_BUTTON:Ljava/lang/String; = "key_button"

.field private static final KEY_RANGE:Ljava/lang/String; = "key_range"

.field private static final TYPE:I = 0x6


# instance fields
.field private final mControlButton:Landroid/service/controls/templates/ControlButton;

.field private final mRangeTemplate:Landroid/service/controls/templates/RangeTemplate;


# direct methods
.method constructor <init>(Landroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/service/controls/templates/ControlTemplate;-><init>(Landroid/os/Bundle;)V

    const-string v0, "key_button"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/service/controls/templates/ControlButton;

    iput-object v0, p0, Landroid/service/controls/templates/ToggleRangeTemplate;->mControlButton:Landroid/service/controls/templates/ControlButton;

    new-instance v0, Landroid/service/controls/templates/RangeTemplate;

    const-string v1, "key_range"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/service/controls/templates/RangeTemplate;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/service/controls/templates/ToggleRangeTemplate;->mRangeTemplate:Landroid/service/controls/templates/RangeTemplate;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/service/controls/templates/ControlButton;Landroid/service/controls/templates/RangeTemplate;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/service/controls/templates/ControlTemplate;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Landroid/service/controls/templates/ToggleRangeTemplate;->mControlButton:Landroid/service/controls/templates/ControlButton;

    iput-object p3, p0, Landroid/service/controls/templates/ToggleRangeTemplate;->mRangeTemplate:Landroid/service/controls/templates/RangeTemplate;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/CharSequence;Landroid/service/controls/templates/RangeTemplate;)V
    .registers 6

    new-instance v0, Landroid/service/controls/templates/ControlButton;

    invoke-direct {v0, p2, p3}, Landroid/service/controls/templates/ControlButton;-><init>(ZLjava/lang/CharSequence;)V

    invoke-direct {p0, p1, v0, p4}, Landroid/service/controls/templates/ToggleRangeTemplate;-><init>(Ljava/lang/String;Landroid/service/controls/templates/ControlButton;Landroid/service/controls/templates/RangeTemplate;)V

    return-void
.end method


# virtual methods
.method public getActionDescription()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/service/controls/templates/ToggleRangeTemplate;->mControlButton:Landroid/service/controls/templates/ControlButton;

    invoke-virtual {v0}, Landroid/service/controls/templates/ControlButton;->getActionDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method getDataBundle()Landroid/os/Bundle;
    .registers 4

    invoke-super {p0}, Landroid/service/controls/templates/ControlTemplate;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Landroid/service/controls/templates/ToggleRangeTemplate;->mControlButton:Landroid/service/controls/templates/ControlButton;

    const-string v2, "key_button"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Landroid/service/controls/templates/ToggleRangeTemplate;->mRangeTemplate:Landroid/service/controls/templates/RangeTemplate;

    invoke-virtual {v1}, Landroid/service/controls/templates/RangeTemplate;->getDataBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "key_range"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public getRange()Landroid/service/controls/templates/RangeTemplate;
    .registers 2

    iget-object v0, p0, Landroid/service/controls/templates/ToggleRangeTemplate;->mRangeTemplate:Landroid/service/controls/templates/RangeTemplate;

    return-object v0
.end method

.method public getTemplateType()I
    .registers 2

    const/4 v0, 0x6

    return v0
.end method

.method public isChecked()Z
    .registers 2

    iget-object v0, p0, Landroid/service/controls/templates/ToggleRangeTemplate;->mControlButton:Landroid/service/controls/templates/ControlButton;

    invoke-virtual {v0}, Landroid/service/controls/templates/ControlButton;->isChecked()Z

    move-result v0

    return v0
.end method
