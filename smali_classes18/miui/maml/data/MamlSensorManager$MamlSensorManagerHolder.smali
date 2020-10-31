.class Lmiui/maml/data/MamlSensorManager$MamlSensorManagerHolder;
.super Ljava/lang/Object;
.source "MamlSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/MamlSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MamlSensorManagerHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lmiui/maml/data/MamlSensorManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lmiui/maml/data/MamlSensorManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/maml/data/MamlSensorManager;-><init>(Lmiui/maml/data/MamlSensorManager$1;)V

    sput-object v0, Lmiui/maml/data/MamlSensorManager$MamlSensorManagerHolder;->INSTANCE:Lmiui/maml/data/MamlSensorManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
