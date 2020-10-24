.class Lmiui/external/widget/Spinner$SpinnerCheckedProvider;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/external/adapter/SpinnerCheckableArrayAdapter$CheckedStateProvider;


# instance fields
.field private mSpinner:Lmiui/external/widget/Spinner;


# direct methods
.method public constructor <init>(Lmiui/external/widget/Spinner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/external/widget/Spinner$SpinnerCheckedProvider;->mSpinner:Lmiui/external/widget/Spinner;

    return-void
.end method


# virtual methods
.method public isChecked(I)Z
    .locals 0

    iget-object p0, p0, Lmiui/external/widget/Spinner$SpinnerCheckedProvider;->mSpinner:Lmiui/external/widget/Spinner;

    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
