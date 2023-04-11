#ifndef SRC_SOUNDMANAGER_H_
#define SRC_SOUNDMANAGER_H_

#include "main.h"
#include "cmsis_os.h"

class SoundManager {
public:
	SoundManager();
	virtual ~SoundManager();

	void setSoundActive(int soundIndex);
	uint8_t getActiveSounds();

private:
	uint8_t activeSounds = 0;
};

extern SoundManager soundManager;

#endif /* SRC_SOUNDMANAGER_H_ */
