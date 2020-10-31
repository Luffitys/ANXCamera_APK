.class Lmiui/widget/PictureClock$AmPm;
.super Ljava/lang/Object;
.source "PictureClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/PictureClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AmPm"
.end annotation


# instance fields
.field private mAmPm:Landroid/widget/TextView;

.field private mAmString:Ljava/lang/String;

.field private mPmString:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/miui/internal/R$id;->am_pm:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/widget/PictureClock$AmPm;->mAmPm:Landroid/widget/TextView;

    invoke-static {}, Lmiui/date/CalendarFormatSymbols;->getDefault()Lmiui/date/CalendarFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/date/CalendarFormatSymbols;->getAmPms()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lmiui/widget/PictureClock$AmPm;->mAmString:Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lmiui/widget/PictureClock$AmPm;->mPmString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method setIsMorning(Z)V
    .registers 4

    iget-object v0, p0, Lmiui/widget/PictureClock$AmPm;->mAmPm:Landroid/widget/TextView;

    if-eqz v0, :cond_e

    if-eqz p1, :cond_9

    iget-object v1, p0, Lmiui/widget/PictureClock$AmPm;->mAmString:Ljava/lang/String;

    goto :goto_b

    :cond_9
    iget-object v1, p0, Lmiui/widget/PictureClock$AmPm;->mPmString:Ljava/lang/String;

    :goto_b
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_e
    return-void
.end method

.method setShowAmPm(Z)V
    .registers 4

    iget-object v0, p0, Lmiui/widget/PictureClock$AmPm;->mAmPm:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    if-eqz p1, :cond_8

    const/4 v1, 0x0

    goto :goto_a

    :cond_8
    const/16 v1, 0x8

    :goto_a
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_d
    return-void
.end method
