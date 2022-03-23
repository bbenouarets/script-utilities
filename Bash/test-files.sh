FILES_COUNT=1000
FILES_PREFIX="test_file_"
FILES_SUFFIX=".txt"

for i in $(seq 1 $FILES_COUNT); do
    echo "Creating file $FILES_PREFIX$i$FILES_SUFFIX"
    touch $FILES_PREFIX$i$FILES_SUFFIX
    echo "Test file content" >> $FILES_PREFIX$i$FILES_SUFFIX
done


FOLDER_COUNT=2
FOLDER_PREFIX="test_"
FOLDER_FILES_COUNT=10

for i in $(seq 1 $FOLDER_COUNT); do
    echo "Creating folder $FOLDER_PREFIX$i"
    mkdir $FOLDER_PREFIX$i
    for j in $(seq 1 $FOLDER_FILES_COUNT); do
        echo "Creating file $FOLDER_PREFIX$i/$FILES_PREFIX$j$FILES_SUFFIX"
        touch $FOLDER_PREFIX$i/$FILES_PREFIX$j$FILES_SUFFIX
        echo "Test file content" >> $FOLDER_PREFIX$i/$FILES_PREFIX$j$FILES_SUFFIX
    done
done

